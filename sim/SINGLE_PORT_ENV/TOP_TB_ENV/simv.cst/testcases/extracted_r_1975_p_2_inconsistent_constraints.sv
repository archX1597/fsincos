class c_1975_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1975_2;
    c_1975_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zz0x1z0z110xzzzzx11xx01xxxx0xzzzxxzzxzxxxzxzzzzzxxzxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram