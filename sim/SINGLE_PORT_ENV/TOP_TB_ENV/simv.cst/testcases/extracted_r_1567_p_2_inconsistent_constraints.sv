class c_1567_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1567_2;
    c_1567_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xxxxz1zx00x1zx11x010xz01100z1xzxzzzxxzxxzzxxzxxxxzzzxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
