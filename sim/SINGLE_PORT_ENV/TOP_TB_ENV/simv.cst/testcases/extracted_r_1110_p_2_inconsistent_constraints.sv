class c_1110_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1110_2;
    c_1110_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0x0x01zz01010z0z1x10x1x1z11xxzzzzxxxxxxzxzzzzzxxxxxxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
