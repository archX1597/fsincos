class c_1054_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1054_2;
    c_1054_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zzx0x1x010z1x0z1xxxz0x1zzz1x0xxxzxxzzzxzzzxxzzxxxzxxxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
