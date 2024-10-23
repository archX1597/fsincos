class c_1174_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1174_2;
    c_1174_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx10x1000xzzz1x1xzz1xxxz0x1zx0zxxxxxxxzxzxzzzxzxxxzzxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
