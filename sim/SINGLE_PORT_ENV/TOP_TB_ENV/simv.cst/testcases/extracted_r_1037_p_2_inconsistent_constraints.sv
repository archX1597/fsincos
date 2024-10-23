class c_1037_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1037_2;
    c_1037_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx110x1xxz110z0100xz00x0zz0z11x0xxzzzzzzzzxzxxzzzzxxzxxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
