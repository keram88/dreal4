#include "dreal/smt2/run.h"

#include "dreal/smt2/driver.h"
#include "dreal/util/logging.h"
#include <iostream>
#include <cassert>

namespace dreal {

using std::string;

void RunSmt2(const string& filename, const Config& config,
             const bool debug_scanning, const bool debug_parsing) {
  Smt2Driver smt2_driver{Context{config}};
  // Set up --debug-scanning option.
  smt2_driver.set_trace_scanning(debug_scanning);
  DREAL_LOG_DEBUG("RunSmt2() --debug-scanning = {}",
                  smt2_driver.trace_scanning());
  // Set up --debug-parsing option.
  smt2_driver.set_trace_parsing(debug_parsing);
  DREAL_LOG_DEBUG("RunSmt2() --debug-parsing = {}",
                  smt2_driver.trace_parsing());
  if (filename.size() != 0) {
    smt2_driver.parse_file(filename);
  }
  else {
    int parens = 0;
    char read;
    std::string input;
    while (std::cin.good()) {
      assert(parens >= 0);
      if (parens == 0 && input.size() != 0) {
	bool res = smt2_driver.parse_string(input);
	if (!res) { std::cout << "ERROR: [" << input << ']' << std::endl; }
	input = "";
      }
      std::cin >> std::noskipws >> read;
      if (std::isspace(read) && read != ' ') {
	continue;
      }
      if (read == '(') {
	parens++;
      }
      if (read == ')') {
	parens--;
      }
      input += read;
    }
  }
}
}  // namespace dreal
