class c_1636_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1636_2;
    c_1636_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z0zz0z000xz0z0x00010000001101xzzxxxxzzxxzzxxxzxxzzzzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
