class c_1656_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1656_2;
    c_1656_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101101x0x10x001xx0xz1xx10zzz1z1zzzxzxxxzxxxzxzzxzxxzzzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
