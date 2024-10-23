class c_1869_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1869_2;
    c_1869_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx000z1001zxxz1z0z0x0x111zxxz01zxxzzxzxxxxxxzzzzxxxzzzxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
