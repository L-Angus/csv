#include <string>
#include <string_view>
#include <fstream>
#include <vector>
#include <sstream>
#include <iostream>
#include <boost/filesystem.hpp>
#include <ctime>
#include <unordered_map>


inline std::vector<std::string> SplitString(const std::string& str, const char& ch) {
    std::vector<std::string> tmp;
    std::size_t start = 0;
    for (std::size_t pos = 0; pos < str.size(); ++pos) {
        if (str[pos] == ch) {
            if (pos - start > 1)
                tmp.push_back(str.substr(start, pos - start));
            start = pos + 1;
        }
    }
    if (start < str.size())
        tmp.push_back(str.substr(start, str.size() - start));
    return tmp;
}


class CSVRow {
public:
    CSVRow() {
        write_time.clear();
    }
    ~CSVRow() {}

    void csvread(const std::string& filename) {
        auto ok = CheckStatusIsChange(filename);
        if (!ok) return;
        std::ifstream ifs(filename);
        if (!ifs.good()) throw std::runtime_error("Not found such a file");
        std::string line;
        std::getline(ifs, line);
        pushheader(line);
        csv_data.assign(std::istreambuf_iterator<char>(ifs), std::istreambuf_iterator<char>());
        // lines = SplitString(csv_data, '\n');
        ifs.close();
        std::cout << "header:" << headers[0] << std::endl;
        // std::cout << "line:" << lines[0] << std::endl;
    }

    void pushheader(const std::string header) {
        headers.push_back(header);
    }
    void pushline() {
        lines = SplitString(csv_data, '\n');
    }

    size_t DataSize() const noexcept { return lines.size(); }
private:
    bool CheckStatusIsChange(const std::string& filename) {
        boost::filesystem::path p(filename);
        if (!boost::filesystem::exists(p)) throw std::runtime_error("Not found such csv file");
        auto time = boost::filesystem::last_write_time(p);
        if (!write_time.count(filename)) {
            write_time.try_emplace(filename, time);
            return true;
        }
        if (time == write_time.find(filename)->second) return false;
        write_time.at(filename) = time;
        return true;
    }
    size_t mCount;
    std::vector<std::string> headers;
    std::vector<std::string> lines;
    std::string csv_data;
    std::unordered_map<std::string, std::time_t> write_time;
};