class c_1621_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1621_2;
    c_1621_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx1xxxxxxxz000011x000x1101x01zzzzzzzxzxxzxzxxxxxzzxxxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
