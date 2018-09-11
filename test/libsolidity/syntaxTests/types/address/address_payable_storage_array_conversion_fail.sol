contract C {
    address payable[] a;
    address[] b;
    function f() public view {
        address payable[] storage c = a;
        address[] storage d = b;
        c = address[](d);
    }
}
// ----
// TypeError: (172-184): Type address[] storage ref is not implicitly convertible to expected type address payable[] storage pointer.
