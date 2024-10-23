class c_1964_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1964_2;
    c_1964_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz01x11z00101zz1zx001zxx11zz00xxxzxzxxzzzzzxxxzzzxxxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
