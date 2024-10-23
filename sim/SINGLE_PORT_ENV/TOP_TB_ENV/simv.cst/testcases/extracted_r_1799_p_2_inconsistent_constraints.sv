class c_1799_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1799_2;
    c_1799_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxz0zx101z01x0z1x0z1z1z01z0zz1xxxxxxxzzxxzzzxzxzzxxxxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
