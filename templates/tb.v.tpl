
module {{NAME}}_tb;

    // -------------------------
    // DUT signals
    // -------------------------
    wire <OUTPUTS>;
    wire <INPUTS>;

    // -------------------------
    // Device Under Test (DUT)
    // -------------------------
    <module_name> dut (
        <PORT_CONNECTIONS>
    );

    // -------------------------
    // Test / stimulus module
    // -------------------------
    <module_name>_test test (
        <PORT_CONNECTIONS>
    );

endmodule