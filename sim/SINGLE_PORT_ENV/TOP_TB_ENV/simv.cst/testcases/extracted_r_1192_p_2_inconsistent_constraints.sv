class c_1192_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1192_2;
    c_1192_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1z0101z0010zz01xxxzz1z0z000xxxzzzxzxzxzzxxxxxxxxxzxzxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
