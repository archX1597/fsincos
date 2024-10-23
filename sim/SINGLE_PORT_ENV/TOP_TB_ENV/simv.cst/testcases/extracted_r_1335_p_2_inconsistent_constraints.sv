class c_1335_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1335_2;
    c_1335_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0x10z0xzxzxzx1x0z1zx111x0011zzxzxzxxxzzzxzxzzzzzzxzxzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
