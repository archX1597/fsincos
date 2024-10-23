class c_1697_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1697_2;
    c_1697_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101xxzzx0x000101z0xxzzzzx1x1z1zxxzzzxxxzzzzxxzxxxxzxzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
