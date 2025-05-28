# 默认显式帮助
default:
    @just --summary

# 简单构建产物
build:
    @echo "Just Building the project..."
    ./scripts/build.sh
    @echo "Just Build completed."

# 仅运行测试
test:
    @echo "Just Running tests..."
    ./scripts/test.sh
    @echo "Just Tests completed."

# 运行测试 + 覆盖率
test-full:
    @echo "Just Running tests with coverage..."
    ./scripts/test-full.sh
    @echo "Just Tests with coverage completed."

# 运行测试并生成覆盖率报告
test-report:
    @echo "Just Running tests and generating coverage report..."
    ./scripts/test-report.sh
    @echo "Just Tests with coverage report completed."
