class c_1124_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1124_2;
    c_1124_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zxz0xzxzx111z1zxxxz10z01xx0z1zxxxxzzxzzxxxzzzzzzxzxzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram