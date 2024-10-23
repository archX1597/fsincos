class c_1356_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1356_2;
    c_1356_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0z1xxx1zzxx01zx00zz1zxx1xzx10xxxzxxzzxxzxxzxzzxzxzzxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
