class c_1645_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1645_2;
    c_1645_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x01010z11zz1x0x1zz0z1xz10x1x0zxzzzzzxxxxzxzxxzxzzzxzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
