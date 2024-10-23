class c_1216_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1216_2;
    c_1216_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1zx0z1zzxxz10z1zxxzx0z01zx0xzzxxxzzxxxxzzxzzzzzxzzzzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
