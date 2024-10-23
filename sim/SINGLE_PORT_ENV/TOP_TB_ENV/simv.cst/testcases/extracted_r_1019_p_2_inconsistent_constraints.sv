class c_1019_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1019_2;
    c_1019_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xx11zz01zxzx0z1z011x10xzxz1x1zzzzxxxzzxxxzzxzxzxzzzzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
