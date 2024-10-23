class c_1721_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1721_2;
    c_1721_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz0zxz1x0zz010z1z1zzzx100zzxx0xxxzxxzxxxxxzzzzxzxxzxzzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
