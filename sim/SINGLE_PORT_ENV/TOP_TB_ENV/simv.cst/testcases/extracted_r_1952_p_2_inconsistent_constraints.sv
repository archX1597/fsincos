class c_1952_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1952_2;
    c_1952_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z000z1z11xz10xzx100zx00x1zxxz1xzxxzzxzxxxzxxxxxzxzzzzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
