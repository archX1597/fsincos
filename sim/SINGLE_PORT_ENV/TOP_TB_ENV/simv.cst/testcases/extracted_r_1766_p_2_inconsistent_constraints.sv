class c_1766_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1766_2;
    c_1766_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011011110z111z000x0x10z10z1zzzxxzxxzzzxxxxxzzxxzzzxxxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
