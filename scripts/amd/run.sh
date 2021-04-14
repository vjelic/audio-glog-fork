# circleci setup

circleci config validate

sh scripts/amd/clean.sh

circleci config process .circleci/config.yml >process.yml
circleci local execute -c process.yml --job binary_linux_rocm_wheel_py3.6

sh scripts/amd/clean.sh
