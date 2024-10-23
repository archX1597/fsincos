class c_1094_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1094_2;
    c_1094_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z1111xxzzx01z1zx01xxz0z10x1z1zxzzzzxxxxxzzxxzzzxxxxzxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
