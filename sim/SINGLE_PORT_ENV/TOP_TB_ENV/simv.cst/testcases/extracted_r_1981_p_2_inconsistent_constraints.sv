class c_1981_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1981_2;
    c_1981_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010001x11z0zz11x0z10z01zz1xxxzxxxxxxxxxzzzxzxxxzzxxxzzzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
