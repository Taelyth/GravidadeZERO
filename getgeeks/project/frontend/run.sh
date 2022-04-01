robot -l NONE -o NONE -r NONE tasks/Delorean.robot
pabot -d ./logs -v BROWSER:chromium -v HEADLESS:False tests

rm -rf ./logs/browser
mkdir ./logs/browser
mkdir ./logs/browser/screenshot
# shellcheck disable=SC2046
cp $(find ./logs/pabot_results -type f -name "*.png") ./logs/browser/screenshot
