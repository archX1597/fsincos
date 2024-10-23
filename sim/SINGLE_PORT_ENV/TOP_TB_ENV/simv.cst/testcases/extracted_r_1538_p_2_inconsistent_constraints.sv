class c_1538_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1538_2;
    c_1538_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1z0z101z0xzz110zzx011x0xzxzz0xzzzxxxzxxxzxxxxxxzzxxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
