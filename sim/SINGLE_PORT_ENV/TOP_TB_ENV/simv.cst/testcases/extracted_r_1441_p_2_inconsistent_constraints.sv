class c_1441_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1441_2;
    c_1441_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x11z10111101z10000zx001zxx1z00xxzzxzxzxzzzxxxxxxxzxzzzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
