class c_1057_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1057_2;
    c_1057_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1xz0z00x01zz0001x0x0xzzxx00xxzzxxzzzzzxxzzxxxxxxxzzzxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
