contract C {
    address payable[] a;
    address[] b;
    function f() public view {
        address payable[] storage c = a;
        address[] storage d = b;
        d = address[](c);
    }
}
// ----
