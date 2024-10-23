class c_1644_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1644_2;
    c_1644_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x10zz10xxxz01z11xzx0zzx101zzzxzzzxxxzxxxzxxzxxxzxxxxzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
