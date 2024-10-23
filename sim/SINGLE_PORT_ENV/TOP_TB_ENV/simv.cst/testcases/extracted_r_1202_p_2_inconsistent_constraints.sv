class c_1202_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1202_2;
    c_1202_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z010z11110xx11zzz0z1zxz10zx0zxxzxzxxxxzzxzxxxxzzxxxzxzzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
