class c_1103_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1103_2;
    c_1103_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01111zzxx1xz1x11110z1xx110z0011zxxzxzzxzzxzxzxxzxzzzzzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
