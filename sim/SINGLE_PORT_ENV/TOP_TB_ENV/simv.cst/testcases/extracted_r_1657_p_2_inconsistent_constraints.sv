class c_1657_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1657_2;
    c_1657_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zzz1x0zxzxz00xx1x011x11x00x0zxzxxzxzxxzxxzxxzxxzzxzzxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
