grammar EM does Grammar::ErrorReporting {
    has SymbolTable $.ST = SymbolTable.new();

    method block {
        $.ST.enter-scope();
        LEAVE $.ST.leave-scope();
        self.block_wrapped();
    }
}
