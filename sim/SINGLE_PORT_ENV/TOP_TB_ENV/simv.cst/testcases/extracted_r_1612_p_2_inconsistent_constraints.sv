class c_1612_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1612_2;
    c_1612_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxxz0xzxz1z100zxxz1110x1xz0z11xzxzzzzzzxzzxzzxxzxzzxxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
