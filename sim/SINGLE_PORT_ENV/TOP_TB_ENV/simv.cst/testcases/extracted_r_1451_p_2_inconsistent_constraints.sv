class c_1451_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1451_2;
    c_1451_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11z1zzx0zzx0zz11zx1zx0x0zz1zxzxzzxxzxzxzzzxzxxzzzzzzxzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
