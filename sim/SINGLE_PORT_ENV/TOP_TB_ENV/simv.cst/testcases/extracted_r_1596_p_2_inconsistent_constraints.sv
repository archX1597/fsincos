class c_1596_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1596_2;
    c_1596_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xx10x01zz0x0zz0x0010x0xz1x000zzxzzxzxzzxzxzxxxzzzxzzzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
