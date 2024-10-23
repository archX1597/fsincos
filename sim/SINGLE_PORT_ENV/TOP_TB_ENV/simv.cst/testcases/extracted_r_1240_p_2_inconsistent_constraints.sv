class c_1240_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1240_2;
    c_1240_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1z00zzxx101zx1zzz10001000zx11zzxzzzzzzxxzxzzzzxzxzzzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
