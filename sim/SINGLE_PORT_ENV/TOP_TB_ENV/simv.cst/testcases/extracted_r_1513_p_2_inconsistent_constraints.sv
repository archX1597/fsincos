class c_1513_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1513_2;
    c_1513_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1x0x00zzzx01x0010z001x10xx00zxzzxzzxzxxzxzzzzxzzxxzxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
