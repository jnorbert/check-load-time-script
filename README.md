#### Function Explanation: `check_load_time`

The `check_load_time` function does the following:

1. **Writes the header for the report**, including the current date and time, to the report file.
2. **Iterates over each URL** in the `URLS` array.
3. For each URL, it uses `curl` to measure the total time taken to load the page. The `curl` command is used with the following options:
   - `-o /dev/null`: Discards the output.
   - `-s`: Silent mode, which suppresses progress and error messages.
   - `-w '%{time_total}\n'`: Writes the total time, in seconds, that the request took to complete.
4. **Appends the loading time for each URL** to the report file in a human-readable format.
5. **Prints a message** indicating that the report has been saved.
