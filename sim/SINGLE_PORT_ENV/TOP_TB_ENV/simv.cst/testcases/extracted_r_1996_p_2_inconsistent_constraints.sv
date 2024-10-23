class c_1996_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1996_2;
    c_1996_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z1xx01100xz10z1zx1x0xzxxxx001zxzzzzxzzzzzzzzzzxxzzzxxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram