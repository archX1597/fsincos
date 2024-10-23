class c_1958_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1958_2;
    c_1958_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0z0zz1zxzx1z10z11111xxxx00x10zxzxzzzxzzzzzzxxzxxxzxxzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
