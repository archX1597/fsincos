class c_1872_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1872_2;
    c_1872_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1z1zz11zzx0xx100xx01x1101xxzzxzxxzzzxzxxxzxxzxzxzzzzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
