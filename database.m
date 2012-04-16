/********************************************************************
 * Author: Arsen Elkin
 * Affiliation: University of Warwick
 * Date: 11/04/2012
 * Disclaimer: Provided as is. No guarantees.
 ********************************************************************
 *
 * This file provided functions for loading the database to MAGMA.
 *
 * The pertinent function is BelyiMapDatabase()
 *
 * TODO: create the list of files dynamically based on the contents
 *    of the data folder.
 ********************************************************************/

load "format.m";

function BelyiMapDatabase( : dir := "data/")
    filelist := Open(dir cat "filelist.dat", "r");
    database := AssociativeArray();
    data := "";
    while true do
        line := Gets(filelist);
        if IsEof(line) then
            break;
        end if;
        if line eq "" then
            continue;
        end if;
        try
            delete data;
            fname := dir cat line;
            data := Read(fname);
            array := eval(data);
            database[array[1]] := array[2];
        catch e
            if assigned data then
                print "Error reading data file", fname;
            else
                print "Error opening data file ", fname;
            end if;
            error e;    // rethrow
        end try;
    end while;

    delete filelist;
    return database;
end function;

