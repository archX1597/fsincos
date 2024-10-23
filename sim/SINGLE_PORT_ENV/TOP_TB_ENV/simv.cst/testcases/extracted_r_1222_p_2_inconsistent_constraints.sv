class c_1222_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1222_2;
    c_1222_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1000zzxzx101z1x1zz01z11z1z10x1zxzzzzxxxxxxxxxxxxxxxzxxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
