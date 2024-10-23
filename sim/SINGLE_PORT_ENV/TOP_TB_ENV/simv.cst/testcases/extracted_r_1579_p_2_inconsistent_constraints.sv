class c_1579_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1579_2;
    c_1579_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11z1x01101z1x11x00zzz0001xxz0zzxzzxxzxzxxzxzxzzxzzzzxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram