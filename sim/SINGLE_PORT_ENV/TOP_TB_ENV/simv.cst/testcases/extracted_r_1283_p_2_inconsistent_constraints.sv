class c_1283_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1283_2;
    c_1283_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11z0z00z0x01x10011z1x0zx0z00x1xxxxxxzxzxxzxxzxxxxzxxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
