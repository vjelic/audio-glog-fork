# circleci setup

circleci config validate

rm -rf process.yml
circleci config process .circleci/config.yml > process.yml
circleci local execute -c process.yml --job binary_linux_wheel_py3.6