#!/usr/bin/env sh

./start.sh

./ci-scripts/check-http-response.sh http://localhost:8100 200
./ci-scripts/check-http-response.sh http://localhost:8100/bar-segment 404

./ci-scripts/check-http-response.sh http://localhost:8100/test.fixture-1.json 200
./ci-scripts/check-http-response.sh http://localhost:8100/test.fixture-2.json 200

./ci-scripts/check-http-output.sh http://localhost:8100 "test.fixture-1.json"
./ci-scripts/check-http-output.sh http://localhost:8100 "test.fixture-2.json"

./stop.sh
