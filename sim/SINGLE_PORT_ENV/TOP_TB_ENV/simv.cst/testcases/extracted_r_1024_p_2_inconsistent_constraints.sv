class c_1024_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1024_2;
    c_1024_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01100xxzzz1z01z1xxz00zxxz101x1zxzzxxxxxxzxzzxzzxxzxzxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
