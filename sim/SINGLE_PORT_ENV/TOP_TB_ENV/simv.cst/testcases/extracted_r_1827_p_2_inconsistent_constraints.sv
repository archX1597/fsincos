class c_1827_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1827_2;
    c_1827_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xx0x0100011xzz1zz1x0x0z0x0z1xzxxxzxzzzzzxzxzzzxzxxzzxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
