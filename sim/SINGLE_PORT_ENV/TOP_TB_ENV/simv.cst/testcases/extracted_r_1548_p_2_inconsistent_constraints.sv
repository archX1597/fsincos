class c_1548_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1548_2;
    c_1548_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx0x010zzz00x0110010z1zzx1z0xxzzxzxxxxxzzzxzzxzzzzxzzxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
