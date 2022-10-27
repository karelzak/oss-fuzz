#!/bin/bash -eu
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################################
# Extend with oss-fuzz settings. To be upsteamed?
cat $SRC/setup_configs.sh >> $SRC/fuzztest/bazel/setup_configs.sh
cd $SRC/raksha
cp $SRC/BUILD_f ./src/ir/datalog/BUILD

# Compile gfuzztests
compile_fuzztests.sh
